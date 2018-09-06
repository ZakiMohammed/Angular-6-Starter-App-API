using FooAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FooAPI.Data;

namespace FooAPI.Repository
{
    public class ProductRepository
    {
        public List<Product> GetProducts()
        {
            using (var context = new FooContext())
            {
                return context.Products.ToList();
            }
        }

        public Product GetProduct(int id)
        {
            using (var context = new FooContext())
            {
                return context.Products.ToList().Find(i => i.ID == id);
            }
        }
    }

    public class ServiceRepository
    {
        public List<Service> GetServices()
        {
            using (var context = new FooContext())
            {
                return context.Services.ToList();
            }
        }

        public Service GetService(int id)
        {
            using (var context = new FooContext())
            {
                return context.Services.ToList().Find(i => i.ID == id);
            }
        }
    }

    public class ContactRepository
    {
        public Contact AddContact(Contact contact)
        {
            using (var context = new FooContext())
            {
                context.Contacts.Add(contact);
                context.SaveChanges();
                return contact;
            }
        }
    }

    public class UserRepository
    {
        public User AuthenticateUser(string userName, string password)
        {
            using (var context = new FooContext())
            {
                return context.Users.ToList().Find(i => i.UserName == userName && i.Password == password);
            }
        }

        public bool IsUserExist(User user)
        {
            using (var context = new FooContext())
            {
                var users = context.Users.Where(i => i.UserName == user.UserName || i.Email == user.Email);
                return users.Any();
            }
        }

        public User AddUser(User user)
        {
            using (var context = new FooContext())
            {
                context.Users.Add(user);
                context.SaveChanges();
                return user;
            }
        }
    }
}