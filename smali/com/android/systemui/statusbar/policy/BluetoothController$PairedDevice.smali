.class public final Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
.super Ljava/lang/Object;
.source "BluetoothController.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairedDevice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;",
        ">;"
    }
.end annotation


# static fields
.field public static STATE_CONNECTED:I

.field public static STATE_CONNECTING:I

.field public static STATE_DISCONNECTED:I

.field public static STATE_DISCONNECTING:I


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public state:I

.field public tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->compareTo(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)I

    move-result v0

    return v0
.end method
