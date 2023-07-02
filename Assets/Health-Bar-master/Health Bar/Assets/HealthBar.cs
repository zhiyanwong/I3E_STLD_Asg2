using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{

	public Slider slider;
	public Gradient gradient;
	public Image fill;


	/// <summary>
	/// starting of the health
	/// </summary>
	/// <param name="health"></param>
	public void SetMaxHealth(float health)
	{
		slider.maxValue = health;
		slider.value = health;

		fill.color = gradient.Evaluate(1f);
	}
	/// <summary>
	/// healthbar will decrease when taking damage
	/// </summary>
	/// <param name="health"></param>
    public void SetHealth(float health)
	{
		slider.value = health;

		fill.color = gradient.Evaluate(slider.normalizedValue);
	}


}
