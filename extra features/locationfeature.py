import requests
from geopy.distance import geodesic

# function to retrieve user's current location
def get_user_location():
    """Getting the user's current location based on their IP address."""
    try:
        # get user IP address and location from ipinfo.io
        response = requests.get('https://ipinfo.io/json')
        # response data is parsed into 'data' dictionary
        data = response.json()

        # extract latitude and longitude of user
        lat, lon = map(float, data['loc'].split(','))
        return lat, lon
    # error message
    except Exception as e:
        print("Error! We could not find your current location :(\nPlease try again.", e)
        return None, None

# function to fetch nearby retailers based on user's current location and search distance
def fetch_retailers_nearby(user_latitude, user_longitude, search_distance):
    """Searching for nearby retailers using Overpass API."""
    # Overpass API query to find retailers nearby
    overpass_url = "http://overpass-api.de/api/interpreter"
    overpass_query = f"""
    [out:json];
    (
      node["shop"](around:{search_distance}, {user_latitude}, {user_longitude});
      way["shop"](around:{search_distance}, {user_latitude}, {user_longitude});
      relation["shop"](around:{search_distance}, {user_latitude}, {user_longitude});
    );
    out body;
    """
    # HTTP request to Overpass API
    # sends 'data' dictionary as a parameter
    response = requests.get(overpass_url, params={'data': overpass_query})
    # response data is parsed into dictionary 'data'
    data = response.json()

    # empty list created to store information about retailers
    retailers = []
    # loops through elements in 'data'
    for element in data['elements']:
        name = element.get('tags', {}).get('name', 'Unknown')
        opening_hours = element.get('tags', {}).get('opening_hours', 'Not specified')
        lat = element.get('lat') if 'lat' in element else None
        lon = element.get('lon') if 'lon' in element else None
        if lat is not None and lon is not None:
            # if latitude and langitude are valid, retailer information is added to 'retailers' list as a tuple
            retailers.append((name, lat, lon, opening_hours))

    return retailers

# function to find nearby retailers and calculate their distances from the user location
def find_nearby_retailers(user_latitude, user_longitude, search_distance):
    """Finding nearby retailers and calculate their distances from user location."""
    # empty list created to store information about retailers along with their distances
    retailers_with_distance = []

    retailers = fetch_retailers_nearby(user_latitude, user_longitude, search_distance)

    # loops through each retailer in 'retailers' list
    for retailer in retailers:
        # unpacks retailer information into separate variables
        name, latitude, longitude, opening_hours = retailer
        # distance between user and retailer locations is calculated using 'geodesic' function
        # returns distance in km
        distance = geodesic((user_latitude, user_longitude), (latitude, longitude)).kilometers
        # 'data' dictionary is appended to 'retailers_with_distance' list
        retailers_with_distance.append({
            'name': name,
            'location': (latitude, longitude),
            'opening_hours': opening_hours,
            'distance': distance
        })

    # sorts retailers by distance (closest to furthest away)
    # lambda applies a function to all items in the list
    retailers_with_distance.sort(key=lambda x: x['distance'])
    return retailers_with_distance

# function to print the information of retailers sorted by distance
def print_retailers_info(retailers):
    """Printing the information of retailers sorted by distance."""

    while True:
            # checks if 'retailers' list is empty
            if not retailers:
                print("No retailers can be found near you within that distance :(\nPlease try again.")
                get_search_distance()
                return

              # if there are retailers, print their information
            for retailer in retailers:
                  print(f"Name: {retailer['name']}")
                  print(f"Location: Latitude: {retailer['location'][0]}, Longitude: {retailer['location'][1]}")
                  print(f"Opening Hours: {retailer['opening_hours']}")
                  print(f"Distance: {retailer['distance']:.2f} km")
                  print("-" * 60)

            break



    # loops through each retailer in 'retailers' list
    for retailer in retailers:
        print(f"Name: {retailer['name']}")
        print(f"Location: Latitude: {retailer['location'][0]}, Longitude: {retailer['location'][1]}")
        print(f"Opening Hours: {retailer['opening_hours']}")
        print(f"Distance: {retailer['distance']:.2f} km")
        # visual choice to display information more clearly to the user by adding space in between each retailer
        print("-" * 60)

# function to get search distance from the user
def get_search_distance():
    """Prompting user for the search distance."""
    while True:
        try:
            distance = float(input("Please enter the search distance (in meters) to find retailers near your location: "))
            if distance > 0:
                return distance
            else:
                print("Error! Please enter a distance greater than 0.")
        except ValueError:
            print("Please enter a distance greater than 0, in metres.\nThe distance must be a numeric value.")

def main():
    # getting user location
    user_latitude, user_longitude = get_user_location()
    if user_latitude is None or user_longitude is None:
        # error message
        print("Error! We could not find your current location :(\nPlease try again.")
        return

    # getting distance search filter from the user
    search_distance = get_search_distance()

    # finding retailers
    nearby_retailers = find_nearby_retailers(user_latitude, user_longitude, search_distance)
    print_retailers_info(nearby_retailers)

# only runs when script is executed directly
if __name__ == "__main__":
    main()