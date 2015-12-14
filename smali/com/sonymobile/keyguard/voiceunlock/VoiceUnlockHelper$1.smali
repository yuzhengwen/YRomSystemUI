.class Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$1;
.super Ljava/lang/Object;
.source "VoiceUnlockHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper$1;->this$0:Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;

    # invokes: Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->handleStartSpeechRecorder()V
    invoke-static {v0}, Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;->access$000(Lcom/sonymobile/keyguard/voiceunlock/VoiceUnlockHelper;)V

    return-void
.end method
