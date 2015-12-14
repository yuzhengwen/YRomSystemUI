.class public Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;
.super Landroid/app/DialogFragment;
.source "AutoSyncDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoSyncDialogFragment"
.end annotation


# instance fields
.field private mEnabling:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;

    invoke-direct {v1}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "enabling"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0, p1}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "enabling"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-boolean v2, p0, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0d0020

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0021

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment$1;-><init>(Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :cond_0
    const v2, 0x7f0d0023

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0024

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/sonymobile/systemui/qs/tiles/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
