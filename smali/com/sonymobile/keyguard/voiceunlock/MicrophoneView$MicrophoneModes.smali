.class public final enum Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;
.super Ljava/lang/Enum;
.source "MicrophoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MicrophoneModes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

.field public static final enum ACTIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

.field public static final enum OFF:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

.field public static final enum PASSIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->OFF:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    new-instance v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    const-string v1, "PASSIVE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->PASSIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    new-instance v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->ACTIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    sget-object v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->OFF:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->PASSIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->ACTIVE:Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->$VALUES:[Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;
    .locals 1

    const-class v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;
    .locals 1

    sget-object v0, Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->$VALUES:[Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    invoke-virtual {v0}, [Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/keyguard/voiceunlock/MicrophoneView$MicrophoneModes;

    return-object v0
.end method
