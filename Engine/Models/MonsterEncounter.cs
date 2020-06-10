using System;
using System.Collections.Generic;
using System.Text;

namespace Engine.Models
{
    public class MonsterEncounter
    {
        public int MonsterID { get; set; }
        public int ChanceOfEncounter { get; set; }

        public MonsterEncounter(int monsterID, int chanceOfEncouter)
        {
            MonsterID = monsterID;
            ChanceOfEncounter = chanceOfEncouter;
        }
    }
}
