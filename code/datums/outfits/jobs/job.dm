/decl/hierarchy/outfit/job
	name = "Standard Gear"
	hierarchy_type = /decl/hierarchy/outfit/job
	uniform_over = /obj/item/clothing/under/jumpsuit/gray
	shoes = /obj/item/clothing/shoes
	id_slot = slot_wear_id
	id_type = /obj/item/weapon/card/id/civilian
	flags = OUTFIT_HAS_BACKPACK

/decl/hierarchy/outfit/job/equip_id(mob/living/carbon/human/H)
	var/obj/item/weapon/card/id/C = ..()
	if(!C)
		return
	if(H.mind)
		if(H.mind.initial_account)
			C.associated_account_number = H.mind.initial_account.account_number
		if(H.mind.initial_email_login)
			C.associated_email_login = H.mind.initial_email_login.Copy()
	return C
