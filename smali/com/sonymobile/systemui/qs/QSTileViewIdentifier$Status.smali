.class public final enum Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
.super Ljava/lang/Enum;
.source "QSTileViewIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

.field public static final enum UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

.field public static final enum UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

.field public static final enum USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    const-string v1, "USED"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    new-instance v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    const-string v1, "UNUSED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    new-instance v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    sget-object v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->$VALUES:[Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    .locals 1

    const-class v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    .locals 1

    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->$VALUES:[Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    invoke-virtual {v0}, [Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    return-object v0
.end method
