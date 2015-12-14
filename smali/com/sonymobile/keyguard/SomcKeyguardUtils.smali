.class public Lcom/sonymobile/keyguard/SomcKeyguardUtils;
.super Ljava/lang/Object;
.source "SomcKeyguardUtils.java"


# direct methods
.method public static limitButtonTextSize(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->somc_kg_status_line_font_max_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$bool;->somc_keyguard_shown_on_phone:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method
