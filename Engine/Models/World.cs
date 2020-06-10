using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace Engine.Models
{
    public class World
    {
        private List<Location> _locations = new List<Location>();

        internal void AddLocation(int xCoordinate, int yCoordinate, string name, string description, string imageName)
        {
            Location loc = new Location
            {
                XCoordinate = xCoordinate,
                YCoordinate = yCoordinate,
                Name = name,
                Description = description,
                ImageName = $"C:/Users/msyanama/source/projects/SOSCSRPGLocationGraphics/{imageName}"
            };
/*           loc.XCoordinate = xCoordinate;
            loc.YCoordinate = yCoordinate;
            loc.Name = name;
            loc.Description = description;
            loc.ImageName = imageName;*/
            _locations.Add(loc);
        }

        public Location LocationAt(int xCordinate, int yCordinate)
        {
            foreach (Location loc in _locations)
            {
                if ((loc.XCoordinate == xCordinate) && (loc.YCoordinate == yCordinate))
                {
                    return loc;
                }  
            }
            return null;
        }
    }
}
