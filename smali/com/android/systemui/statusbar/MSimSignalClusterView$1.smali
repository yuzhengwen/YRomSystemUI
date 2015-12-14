.class Lcom/android/systemui/statusbar/MSimSignalClusterView$1;
.super Landroid/database/ContentObserver;
.source "MSimSignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # invokes: Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateSignalClusterExclusionSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$000(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/MSimSignalClusterView;

    # invokes: Lcom/android/systemui/statusbar/MSimSignalClusterView;->getDefaultPhoneId()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$100(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I

    move-result v1

    # invokes: Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->access$200(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)V

    return-void
.end method
