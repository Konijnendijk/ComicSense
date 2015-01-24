using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Inventory
{
  Dictionary<PickupType, int> m_inventory;

  void Start()
  {
    m_inventory = new Dictionary<PickupType, int>();

    for(int i = 0; i < (int)PickupType.SIZE; ++i)
      m_inventory[(PickupType)i] = 0;
  }

  public int GetItemCount(PickupType tp)
  {
    return m_inventory[tp];
  }

  public void AddItem(PickupType pt)
  {
    m_inventory[pt] += 1;
  }

  public void RemoveItem(PickupType pt)
  {
    m_inventory[pt] -= 1;
  }
}
