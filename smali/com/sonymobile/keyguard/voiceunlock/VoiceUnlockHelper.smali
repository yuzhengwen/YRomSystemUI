.class public Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;
.super Ljava/lang/Object;
.source "VoiceUnlockHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mErrorMessageDisplayer:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mHintMessageDisplayer:Ljava/lang/Runnable;

.field private mHintText:Landroid/widget/TextView;

.field private final mKeyguardDismisser:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMicrophoneFrame:Landroid/view/ViewGroup;

.field private mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

.field private mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

.field private final mVoiceUnlockStopSwitch:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;

.field private mVoiceUnlockUser:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$1;-><init>(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mErrorMessageDisplayer:Ljava/lang/Runnable;

    new-instance v0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$2;-><init>(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintMessageDisplayer:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mKeyguardDismisser:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;

    iput-object p4, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mVoiceUnlockStopSwitch:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;

    iput-object p2, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->handleStartSpeechRecorder()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->validateVoiceUnlockPhrase(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->handleResultSpeechRecorder(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->stopIfRequestedToStop()Z

    move-result v0

    return v0
.end method

.method private handleResultSpeechRecorder(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->removeCallbacks()V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isSpeechRecognizerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_voice_unlock_error_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_voice_unlock_error_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mErrorMessageDisplayer:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    sget-object v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->PASSIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->setRecordMode(Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mKeyguardDismisser:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockKeyguardDismisser;->dismissWithVoiceUnlock()V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->stopSpeechRecorder()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    sget-object v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->OFF:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->setRecordMode(Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;)V

    goto :goto_0
.end method

.method private handleStartSpeechRecorder()V
    .locals 3

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->removeCallbacks()V

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isSpeechRecognizerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_voice_unlock_or_short_unlock_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_voice_unlock_or_short_unlock_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->stopIfRequestedToStop()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->start()V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    sget-object v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->PASSIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;->setRecordMode(Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;)V

    :cond_1
    return-void
.end method

.method private isScreenTurnedOn()Z
    .locals 3

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method private isSpeechRecognizerAvailable()Z
    .locals 5

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sonyericsson.settings.intent.action.VOICE_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isVoiceUnlockEnabled()Z

    move-result v2

    :cond_0
    return v2
.end method

.method private isVoiceUnlockEnabled()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.lockscreen.voice.unlock.enabled"

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private removeCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mErrorMessageDisplayer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private stopIfRequestedToStop()Z
    .locals 3

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mVoiceUnlockStopSwitch:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;

    invoke-interface {v1}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockStopSwitch;->stop()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isVoiceUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mVoiceUnlockUser:I

    iget-object v2, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->stopSpeechRecorder()V

    :cond_1
    return v0
.end method

.method private stopSpeechRecorder()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->removeCallbacks()V

    return-void
.end method

.method private validateVoiceUnlockPhrase(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "somc.lockscreen.voice.unlock.phrase"

    iget-object v8, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_1

    array-length v6, v1

    if-ge v0, v6, :cond_1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method public displayVoiceUnlockHint(I)V
    .locals 4

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isVoiceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintMessageDisplayer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintMessageDisplayer:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public ensureVoiceUnlockVisibility(ZLandroid/content/res/Resources;)V
    .locals 5

    const/16 v4, 0x8

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneFrame:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isVoiceUnlockEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneFrame:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    neg-float v3, v2

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lcom/android/keyguard/R$integer;->somc_voice_unlock_hint_visibility:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideVoiceUnlockHint()V
    .locals 2

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isVoiceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintMessageDisplayer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startSpeechRecorder(Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isSpeechRecognizerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->isScreenTurnedOn()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    if-eqz v0, :cond_1

    const-string v0, "VoiceUnlockHelper"

    const-string v1, "There is already an instance of the SpeechRecorder!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mVoiceUnlockUser:I

    iput-object p1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneFrame:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mHintText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneFrame:Landroid/view/ViewGroup;

    sget v1, Lcom/android/keyguard/R$id;->somc_keyguard_voice_unlock_microphone_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mMicrophoneView:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;

    new-instance v0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$3;-><init>(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->mSpeechRecorder:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;

    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->handleStartSpeechRecorder()V

    goto :goto_0
.end method
