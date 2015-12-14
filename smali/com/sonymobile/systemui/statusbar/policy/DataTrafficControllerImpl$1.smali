.class Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "DataTrafficControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    # invokes: Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->dataTrafficSettingsChanged()V
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->access$000(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V

    return-void
.end method
