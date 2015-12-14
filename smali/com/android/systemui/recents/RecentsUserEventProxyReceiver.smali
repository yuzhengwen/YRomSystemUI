.class public Lcom/android/systemui/recents/RecentsUserEventProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentsUserEventProxyReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/systemui/recent/Recents;->getRecentsComponent(Landroid/content/Context;Z)Lcom/android/systemui/recents/AlternateRecentsComponent;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const/4 v4, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string v6, "com.android.systemui.recents.action.SHOW_RECENTS_FOR_USER"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string v8, "com.android.systemui.recents.action.HIDE_RECENTS_FOR_USER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v6

    goto :goto_0

    :sswitch_2
    const-string v6, "com.android.systemui.recents.action.TOGGLE_RECENTS_FOR_USER"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v6, "com.android.systemui.recents.action.PRELOAD_RECENTS_FOR_USER"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "com.android.systemui.recents.action.CONFIG_CHANGED_FOR_USER"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :pswitch_0
    const-string v4, "triggeredFromAltTab"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "triggeredFromSmallApp"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->showRecents(ZZ)V

    goto :goto_1

    :pswitch_1
    const-string v4, "triggeredFromAltTab"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "triggeredFromHomeKey"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "triggeredFromSmallApp"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->hideRecents(ZZZ)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->toggleRecents()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->preloadRecents()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->configurationChanged()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x74dce9f0 -> :sswitch_2
        -0x14449bff -> :sswitch_3
        -0x92de2de -> :sswitch_1
        0x4256ecc7 -> :sswitch_0
        0x63dfae26 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
