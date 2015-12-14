.class Lcom/android/systemui/volume/VolumePanel$8;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->createSliders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mSomcVolumeBehavior:Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;

    move-result-object v0

    # invokes: Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->startExpandedVolumeSliders()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;->access$3100(Lcom/android/systemui/volume/VolumePanel$SomcVolumeBehavior;)V

    return-void
.end method
