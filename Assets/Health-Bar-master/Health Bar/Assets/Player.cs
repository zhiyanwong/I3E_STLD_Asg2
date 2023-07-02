
using UnityEngine;

public class Player : MonoBehaviour
{

	public float MaxHealth;
	[SerializeField] public float CurrentHealth;

	public HealthBar healthBar;
    public GameObject WastedUI;
    public static bool DeadStill = false;
    // Start is called before the first frame update
    void Start()
    {
        CurrentHealth = MaxHealth;
		healthBar.SetMaxHealth(MaxHealth);
    }

    // Update is called once per frame
  //  void Update()
  //  {
		//if (Input.GetKeyDown(KeyCode.Space))
		//{
		//	TakeDamage(20);
		//}
  //  }
  /// <summary>
  /// PLayer taking damage
  /// </summary>
  /// <param name="Amount"></param>
	public void TakeDamage(float Amount)
	{
		CurrentHealth -= Amount;
		healthBar.SetHealth(CurrentHealth);

        if (CurrentHealth <= 0)
        {
            Wasted();
        }
    }
    /// <summary>
    /// When player died, will appear "You died" UI Canvas. And making the game stop
    /// </summary>
    void Wasted()
    {
        WastedUI.SetActive(true);
        Time.timeScale = 0f;
        DeadStill = true;
    }
}
