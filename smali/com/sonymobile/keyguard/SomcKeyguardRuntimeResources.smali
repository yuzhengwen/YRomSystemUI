.class public Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;
.super Ljava/lang/Object;
.source "SomcKeyguardRuntimeResources.java"


# direct methods
.method private static getSecurityView(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static reload(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 9

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v7, Lcom/android/keyguard/R$id;->keyguard_host_view:I

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v7, Lcom/android/keyguard/R$dimen;->somc_keyguard_bouncer_security_bottom_margin:I

    invoke-static {v0, p1, v7}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateLayoutBottomMargin(Landroid/view/View;Landroid/content/res/Resources;I)V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget v7, Lcom/android/keyguard/R$id;->view_flipper:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v7, :cond_2

    check-cast v6, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-static {v6}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)Landroid/view/View;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    sget v7, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v7, v2, Lcom/android/keyguard/KeyguardSimPinView;

    if-nez v7, :cond_3

    instance-of v7, v2, Lcom/android/keyguard/KeyguardSimPukView;

    if-nez v7, :cond_3

    sget v7, Lcom/android/keyguard/R$dimen;->somc_keyguard_emergency_carrier_area_layout_bottom_margin:I

    invoke-static {v1, p1, v7}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateLayoutBottomMargin(Landroid/view/View;Landroid/content/res/Resources;I)V

    :cond_3
    sget v7, Lcom/android/keyguard/R$id;->keyguard_sim:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$string;->somc_keyguard_visible_tablet_or_portrait:I

    invoke-static {v4, p1, v7}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V

    sget v7, Lcom/android/keyguard/R$id;->somc_keyguard_sim_small_icon:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v7, Lcom/android/keyguard/R$string;->somc_keyguard_visible_phone_landscape:I

    invoke-static {v5, p1, v7}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V

    instance-of v7, v2, Lcom/android/keyguard/KeyguardSimPinView;

    if-nez v7, :cond_4

    instance-of v7, v2, Lcom/android/keyguard/KeyguardSimPukView;

    if-eqz v7, :cond_0

    :cond_4
    invoke-static {v2, p1}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateMessageArea(Landroid/view/View;Landroid/content/res/Resources;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    sget v7, Lcom/android/keyguard/R$id;->sim_info_message:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v7, Lcom/android/keyguard/R$string;->somc_keyguard_visible_tablet_or_portrait:I

    invoke-static {v3, p1, v7}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V

    goto :goto_0
.end method

.method private static updateLayoutBottomMargin(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private static updateLayoutTopPadding(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private static updateMessageArea(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v3, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v3, Lcom/android/keyguard/R$bool;->somc_keyguard_message_area_single_line:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sget v3, Lcom/android/keyguard/R$integer;->somc_keyguard_message_area_max_lines:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sget v3, Lcom/android/keyguard/R$dimen;->somc_keyguard_message_area_padding_top:I

    invoke-static {v0, p1, v3}, Lcom/sonymobile/keyguard/SomcKeyguardRuntimeResources;->updateLayoutTopPadding(Landroid/view/View;Landroid/content/res/Resources;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v2, :cond_2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public static updateVisibility(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v2, "SomcStatusBarKeyguardLoadResources"

    const-string v3, "Invalid visibility value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x8

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "SomcStatusBarKeyguardLoadResources"

    const-string v3, "Invalid visibility format"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
