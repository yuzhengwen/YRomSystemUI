.class public Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;
.super Ljava/lang/Object;
.source "SpeechRecorder.java"


# instance fields
.field private mCallback:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mRmsPowerMax:F

.field private mRmsdBMax:F

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsdBMax:F

    iget v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsdBMax:F

    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->dB2Power(F)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsPowerMax:F

    iput-object p1, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mCallback:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.CONFIDENCE_SCORES"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->dB2Power(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)F
    .locals 1

    iget v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsdBMax:F

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;F)F
    .locals 0

    iput p1, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsdBMax:F

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)F
    .locals 1

    iget v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsPowerMax:F

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;F)F
    .locals 0

    iput p1, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mRmsPowerMax:F

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mCallback:Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorderListener;

    return-object v0
.end method

.method private create()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder$1;-><init>(Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;)V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method private dB2Power(F)F
    .locals 4

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->stop()V

    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->create()V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/SpeechRecorder;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    :cond_0
    return-void
.end method
