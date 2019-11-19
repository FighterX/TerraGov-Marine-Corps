//PROC AMMO
/datum/ammo/proc/area_stagger_burst(turf/Center, obj/item/projectile/P, var/max_range = 2, var/stun = 0, var/weaken = 1, var/stagger = 2, var/slowdown = 1, var/knockback = 1, var/shake = 1, var/soft_size_threshold = 3, var/hard_size_threshold = 2)	//by Jeser specifically for autocannon. Mix of Burst() and Stagger(): Deals damage in area + applies stagger to mobs in area
	if(!Center || !P)
		return
	for(var/mob/living/carbon/M in range(1,Center))
		M.visible_message("<span class='danger'>[M] got a concussion from \a [P.name]!</span>","[isxeno(M)?"<span class='xenodanger'>":"<span class='highdanger'>"]You are concussed from \a </b>[P.name] explosion</b>!</span>")
		M.apply_damage(rand(10,P.damage/2))
		staggerstun(M, P, max_range, stun, weaken, stagger, slowdown, knockback, shake, soft_size_threshold, hard_size_threshold)
