using System.Text.Json;

namespace BasicTask
{
    class Program
    {
        static void Main(string[] args)
        {
            var orders = new List<Order>
        {
            {
                new Order()
                {
                    order_id = "SO-921",
                    created_at = DateTime.Parse("2018-02-17T03:24:12"),
                    customer = new Customer() { id = 33, name = "Ari" },
                    items = new List<Item>{
                        {new Item() { id = 24, name = "Sapu Lidi", qty = 2, price = 13200 }},
                        {new Item() { id = 73, name = "Sprei 160x200 polos", qty = 1, price = 149000 }},
                    },
                }
            },

            {
                new Order()
                {
                    order_id = "SO-922",
                    created_at = DateTime.Parse("2018-02-20T13:10:32"),
                    customer = new Customer()  {id = 40, name = "Ririn" },
                    items = new List<Item>
                    {
                        { new Item() { id = 83, name = "Rice Cooker", qty = 1, price = 258000 }},
                        { new Item() { id = 24, name = "Sapu Lidi", qty = 1, price = 13200 }},
                        { new Item() { id = 30, name = "Teflon", qty = 1, price = 190000 }},
                    }
                }
            },

            {
                new Order()
                {
                    order_id = "SO-926",
                    created_at = DateTime.Parse("2018-03-05T16:23:20"),
                    customer = new Customer()  {id = 58, name = "Annis"},
                    items = new List<Item>
                        {
                            new Item() { id = 24, name = "Sapu Lidi", qty = 3, price = 13200 }
                        }
                }
            },
            {
                new Order()
                {
                    order_id = "SO-925",
                    created_at = DateTime.Parse("2018-03-03T14:52:22"),
                    customer = new Customer()  {id = 33, name = "Ari"},
                    items = new List<Item>
                        {
                            { new Item() { id = 1033, name = "Nintendo Switch", qty = 1, price = 4990000 }},
                            { new Item() { id = 2003, name = "Macbook Air 11 inch 128 GB", qty = 1, price = 12000000 }},
                            { new Item() { id = 23, name = "Pocari Sweat 600ML", qty = 5, price = 7000 }},
                        },
                }

            }

        };

        //SOAL No 1
        //var json = JsonSerializer.Serialize(purchase); 
        var purchase = orders.Where(item => item.created_at.Month == 2).Select(item => item.order_id);
        var json_purchase = JsonSerializer.Serialize(purchase);
        Console.WriteLine("Soal Nomor 1");
        Console.WriteLine(json_purchase);


        //SOAL No 2
        var price = orders.Where(item => item.customer!.name == "Ari").Select(item => item.items!.Select(item => item.price));
        var quantity = orders.Where(item => item.customer!.name == "Ari").Select(item => item.items!.Select(item => item.qty));
        
        List<int> total_purchase = new List<int>();
        for(int i = 0; i < price.Count(); i++)
        {
            for(int j = 0; j < price.ElementAt(i).Count(); j++)
            {
                int total = price.ElementAt(i).ElementAt(j) * quantity.ElementAt(i).ElementAt(j);
                total_purchase.Add(total);
            }
        }

        Console.WriteLine("Soal Nomor 2");
        Console.WriteLine(JsonSerializer.Serialize(total_purchase.Sum()));

        //SOAL No 3
        
        string[] names = { "Annis", "Ari", "Ririn" };
        var total_belanja = new List<string>();
        foreach (string name in names)
        {
            var result = orders.Where(item => item.customer!.name == name);
            var prices = result.Select(item => item.items!.Select(item => item.price));
            var quantities = result.Select(item => item.items!.Select(item => item.qty));

            //var total = new List<string>();
            List<int> total_purchases = new List<int>();

            for (int i = 0; i < prices.Count(); i++)
            {
                for (int j = 0; j < prices.ElementAt(i).Count(); j++)
                {
                    int total_price =
                        prices.ElementAt(i).ElementAt(j) * quantities.ElementAt(i).ElementAt(j);
                    total_purchases.Add(total_price);
                }
            }
            int purchase_per_person = total_purchases.Sum();
            if (purchase_per_person < 300000)
            {
                total_belanja.Add(name);
            }
            

            // Console.WriteLine(JsonSerializer.Serialize(total));

        }
        Console.WriteLine("Soal Nomor 3");
        Console.WriteLine(JsonSerializer.Serialize(total_belanja));
    }
}



public class Customer
{
    public int id { get; set; }
    public string? name { get; set; }
}

public class Item
{
    public int id { get; set; }
    public string? name { get; set; }
    public int qty { get; set; }
    public int price { get; set; }
}

public class Order
{
    public string? order_id { get; set; }
    public DateTime created_at { get; set; }
    public Customer? customer { get; set; }
    public List<Item>? items { get; set; }
}}
