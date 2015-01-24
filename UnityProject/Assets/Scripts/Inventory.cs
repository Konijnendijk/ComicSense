using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Inventory : MonoBehaviour
{
  Dictionary<PickupType, int> m_inventory;
  int m_selectedItem;

  void Start()
  {
    m_inventory = new Dictionary<PickupType, int>();

    //init inventory
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

  public int NextItem()
  {
    return m_selectedItem = (m_selectedItem + 1) % (int)PickupType.SIZE;
  }
  public int PreviousItem()
  {
    return m_selectedItem = (m_selectedItem - 1) % (int)PickupType.SIZE;
  }
}
