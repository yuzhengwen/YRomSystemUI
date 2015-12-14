.class public Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;
.super Ljava/lang/Object;
.source "RealPinAutoConfirmHelper.java"

# interfaces
.implements Lcom/sonymobile/keyguard/pin/PasswordEntryListener;
.implements Lcom/sonymobile/keyguard/pin/PinAutoConfirmHelper;
.implements Lcom/sonymobile/keyguard/pin/PinUnlockListener;


# instance fields
.field private final mConfirmButtonView:Landroid/view/View;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mFeatureEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

.field private final mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

.field private final mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/os/Vibrator;Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/SecurityMessageDisplay;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    iput-object p2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    iput-object p3, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mVibrator:Landroid/os/Vibrator;

    iput-object p6, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iput-object p7, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iput-object p8, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p9, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/PasswordTextView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method private isAutoUnlockEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;->isAutoUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnabledForPinLength(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableAutoUnlockIfAppropriate()V
    .locals 4

    iget-object v1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->isRecoveryPasswordSaved(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPasswordLengthIncreased(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isEnabledForPinLength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mFeatureEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;->isAutoUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$1;-><init>(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onUnlockFailed()V
    .locals 6

    invoke-direct {p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isAutoUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2}, Lcom/android/keyguard/SecurityMessageDisplay;->getTimeout()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v3, 0x3e8

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v2, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper$2;-><init>(Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;J)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onUnlockSucceded(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isEnabledForPinLength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isAutoUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPinAutoUnlockSettingsSecureWrapper:Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;->enableAutoUnlock()V

    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setContentLocked(Z)V

    :cond_0
    return-void
.end method

.method public updateEnterKeyVisibility()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->isAutoUnlockEnabled()Z

    move-result v0

    iget-object v4, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    if-nez v0, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoConfirmHelper;->mConfirmButtonView:Landroid/view/View;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2
.end method
