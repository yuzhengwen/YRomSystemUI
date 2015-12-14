.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;
.super Ljava/lang/Object;
.source "KeyguardComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyguardClockPreviewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4

    const/4 v3, -0x2

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactory;->createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v1
.end method

.method public createKeyguardClockView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
