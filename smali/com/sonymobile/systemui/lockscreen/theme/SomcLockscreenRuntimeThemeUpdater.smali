.class public Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;
.super Ljava/lang/Object;
.source "SomcLockscreenRuntimeThemeUpdater.java"


# direct methods
.method public static newThemeConfiguration(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateKeyguardIndicationTextColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateAllLockscreenCarrierTextColor(Landroid/view/ViewGroup;)V

    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateDigitalClockColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateKeyguardBottomAreaResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    invoke-static {p0, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateScrimColors(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static updateAllLockscreenCarrierTextColor(Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v6, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    check-cast v5, Lcom/android/keyguard/CarrierText;

    invoke-virtual {v5}, Lcom/android/keyguard/CarrierText;->updateCarrierTextColor()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x7f10005f
        0x7f1000a7
    .end array-data
.end method

.method private static updateDigitalClockColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    const v7, 0x7f09005b

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v6, v0, v2

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v7, 0x7f1000a0

    if-ne v6, v7, :cond_0

    const v7, 0x7f020158

    invoke-virtual {v5, v7, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f100093
        0x7f1000ac
        0x7f10009f
        0x7f1000a0
    .end array-data
.end method

.method private static updateKeyguardBottomAreaResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 2

    const v1, 0x7f100052

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateThemeResources()V

    :cond_0
    return-void
.end method

.method private static updateKeyguardIndicationTextColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 3

    const v2, 0x7f100053

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f090050

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private static updateScrimColors(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/res/Resources;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColorFromResource(Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method
