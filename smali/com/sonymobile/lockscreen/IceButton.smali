.class public Lcom/sonymobile/lockscreen/IceButton;
.super Landroid/widget/Button;
.source "IceButton.java"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/lockscreen/IceButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/lockscreen/IceButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/lockscreen/IceButton;->launchIceContactInfo()V

    return-void
.end method

.method private launchIceContactInfo()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.socialphonebook.action.SHOW_ICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/lockscreen/IceButton;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/sonymobile/lockscreen/IceButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/sonymobile/lockscreen/IceButton;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sonymobile/lockscreen/IceButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/IceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$bool;->enable_sonymobile_lockscreen_ice:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/IceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$bool;->enable_sonymobile_lockscreen_ice_icon:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/IceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$integer;->sonymobile_lockscreen_ice_label_index:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/lockscreen/IceButton;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sonymobile_lockscreen_ice_enabled"

    iget-object v9, p0, Lcom/sonymobile/lockscreen/IceButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v5, v7, :cond_3

    move v1, v5

    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p0, v6}, Lcom/sonymobile/lockscreen/IceButton;->setVisibility(I)V

    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/sonymobile/lockscreen/IceButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_1
    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/IceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->somc_kg_ice_button_label_0:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonymobile/lockscreen/IceButton;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/sonymobile/lockscreen/IceButton;->mContext:Landroid/content/Context;

    invoke-static {v5, p0}, Lcom/sonymobile/keyguard/SomcKeyguardUtils;->limitButtonTextSize(Landroid/content/Context;Landroid/widget/Button;)V

    new-instance v5, Lcom/sonymobile/lockscreen/IceButton$1;

    invoke-direct {v5, p0}, Lcom/sonymobile/lockscreen/IceButton$1;-><init>(Lcom/sonymobile/lockscreen/IceButton;)V

    invoke-virtual {p0, v5}, Lcom/sonymobile/lockscreen/IceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    move v1, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "IceButton"

    const-string v8, "ICE setting not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/sonymobile/lockscreen/IceButton;->setVisibility(I)V

    goto :goto_1

    :cond_5
    if-ne v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/lockscreen/IceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->somc_kg_ice_button_label_1:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonymobile/lockscreen/IceButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
