.class Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment$1;
.super Ljava/lang/Object;
.source "AutoSyncDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment$1;->this$0:Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment$1;->this$0:Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;

    # getter for: Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z
    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->access$000(Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;)Z

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
