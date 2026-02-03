import main
from main import fetch_weekly_data, app

print("--- Diagnosing fetch_weekly_data ---")
try:
    with app.app_context():
        results = fetch_weekly_data()
        print(f"Result count: {len(results)}")
        date_range, breakfast, lunch, dinner = results
        
        print(f"date_range type: {type(date_range)}")
        print(f"date_range value: {date_range}")
        
        if date_range:
             print(f"date_range items: {getattr(date_range, 'items', 'No items method')}")
             
        print(f"breakfast type: {type(breakfast)}")
        if breakfast:
            print(f"breakfast[0] type: {type(breakfast[0])}")
            print(f"breakfast[0] value: {breakfast[0]}")

except Exception as e:
    print(f"Error during diagnosis: {e}")
    import traceback
    traceback.print_exc()
