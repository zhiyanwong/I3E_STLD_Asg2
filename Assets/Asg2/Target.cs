
using UnityEngine;

public class Target : MonoBehaviour
{
    //public float health = 50f;
    public HealthBar healthBar;

    public float MaxHealth;
    [SerializeField] public float CurrentHealth;

    void Start()
    {
        CurrentHealth = MaxHealth;
        healthBar.SetMaxHealth(MaxHealth);
    }

    public void TakeDamage (float amount)
    {
        CurrentHealth -= amount;
        healthBar.SetHealth(CurrentHealth);
        if(CurrentHealth <= 0f)
        {
            Die();
        }
    }

    void Die()
    {
        Destroy(gameObject);
    }
}
