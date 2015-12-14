.class public Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
.super Ljava/lang/Object;
.source "QSTileViewIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mName:Ljava/lang/String;

.field private mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput p1, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNDEFINED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    iput p2, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mIndex:I

    iput-object p3, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mIndex:I

    return-void
.end method

.method public setStatus(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->mStatus:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    return-void
.end method
