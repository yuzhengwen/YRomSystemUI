.class Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "TetheringControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;

    # invokes: Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->TetheringSettingsChanged()V
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->access$000(Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;)V

    return-void
.end method
