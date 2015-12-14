.class final Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
.super Ljava/lang/Object;
.source "SomcQSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/SomcQSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Qs"
.end annotation


# instance fields
.field public autoMirror:Z

.field public configQsEnabledId:I

.field public iconId:I

.field public labelId:I

.field public name:Ljava/lang/String;

.field public ownerOnly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    iput p2, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->configQsEnabledId:I

    iput p3, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->iconId:I

    iput p4, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->labelId:I

    iput-boolean p5, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->autoMirror:Z

    iput-boolean p6, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->ownerOnly:Z

    return-void
.end method
