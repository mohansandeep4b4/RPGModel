using Engine.Factories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Engine.Models
{
    public class Location
    {
        public int XCoordinate { get; set; }
        public int YCoordinate { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ImageName { get; set; }
        public List<Quest> QuestsAvailableHere { get; set; } = new List<Quest>();
        public List<MonsterEncounter> MonstersHere { get; set; } = new List<MonsterEncounter>();
        public Trader TraderHere { get; set; }
        public void AddMonster(int monsterID, int chanceOfEncoutering)
        {
            if (MonstersHere.Exists(m => m.MonsterID == monsterID))
            {
                //If the monster ID already exists, instead of creating new monster, just overwrite chanceOfEncoutering with new num.
                MonstersHere.First(m => m.MonsterID == monsterID).ChanceOfEncounter = chanceOfEncoutering;
            }
            else 
            {
                //This monster is not at this location. So, add it. 
                MonstersHere.Add(new MonsterEncounter(monsterID, chanceOfEncoutering));
            }
        }

        public Monster GetMonster()
        {
            if (!MonstersHere.Any())
            {
                return null;
            }
            else
            {
                int totalChances = MonstersHere.Sum(m => m.ChanceOfEncounter);

                //select a random number between 1 and totalChances
                int randomNumber = RandomNumberGenerator.NumberBetween(1, totalChances);
                int runningTotal = 0;
                foreach (MonsterEncounter monsterEncounter in MonstersHere)
                {
                    runningTotal += monsterEncounter.ChanceOfEncounter;
                    if (randomNumber <= runningTotal)
                    {
                        return MonsterFactory.GetMonster(monsterEncounter.MonsterID);
                    }
                }
                // If there was a problem, return the last monster in the list.
                return MonsterFactory.GetMonster(MonstersHere.Last().MonsterID);
            }
        }
    }
}
