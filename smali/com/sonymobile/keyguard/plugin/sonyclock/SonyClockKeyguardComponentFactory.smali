.class public Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockKeyguardComponentFactory;
.super Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.source "SonyClockKeyguardComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 8

    const/4 v7, -0x2

    const v6, 0x3f666666    # 0.9f

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockKeyguardComponentFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v0, v7, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    sget v4, Lcom/android/keyguard/R$dimen;->sony_clock_clock_picker_top_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_1
    return-object v3
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$layout;->somc_sony_clock_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method
