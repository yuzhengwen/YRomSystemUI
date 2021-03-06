.class public Lcom/android/systemui/usb/StorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$1;,
        Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;,
        Lcom/android/systemui/usb/StorageNotification$UsbStorageNotificationStringGetter;,
        Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;,
        Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;
    }
.end annotation


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private final mMediaStorageNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mSuppressUsbMscNotifications:Z

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotificationMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mSuppressUsbMscNotifications:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkSdcardState(Landroid/os/storage/StorageEventListener;)V
    .locals 3

    const-string v2, "SECONDARY_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unmountable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "unmounted"

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkUsbStorageState(Landroid/os/storage/StorageEventListener;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumePath(Landroid/os/storage/StorageManager$StorageType;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getStringGetter(Ljava/lang/String;)Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
    .locals 6

    const/4 v5, 0x0

    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->getVolumeType(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/usb/StorageNotification$UsbStorageNotificationStringGetter;

    invoke-direct {v2, v5}, Lcom/android/systemui/usb/StorageNotification$UsbStorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification$1;)V

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get volume type, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;

    invoke-direct {v2, v5}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification$1;)V

    goto :goto_1
.end method

.method private final getVolumeByPath([Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/os/storage/StorageVolume;
    .locals 6

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "StorageNotification"

    const-string v5, "No storage found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static isCurrentUser()Z
    .locals 2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 33

    sget-object v31, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getVolumeType(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v31

    :goto_0
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v5, 0x108074e

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->getStringGetter(Ljava/lang/String;)Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;

    move-result-object v32

    const-string v2, "shared"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v24

    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get volume type, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v5, 0x10800ab

    goto :goto_1

    :cond_2
    const-string v2, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "shared"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const v5, 0x108007a

    goto :goto_1

    :cond_3
    const v5, 0x108007b

    goto :goto_1

    :cond_4
    const-string v2, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnChecking()I

    move-result v3

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnChecking()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_2

    :cond_5
    const-string v2, "mounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v13, p1

    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v8, "UA-51142570-15"

    const-string v9, "feature-usage"

    const-string v10, "USB OTG External Memory Mounted"

    const-string v11, "PID001214"

    const-wide/16 v12, 0x0

    invoke-static/range {v7 .. v13}, Lcom/sonymobile/ga/GAManager;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_6
    const-string v2, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "shared"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v13, p1

    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_2

    :cond_7
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "mounted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnSafeUnmount()I

    move-result v3

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnSafeUnmount()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v13, p1

    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v13, p1

    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_2

    :cond_a
    const-string v2, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "storage_volume"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/usb/StorageNotification;->getVolumeByPath([Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnNofs()I

    move-result v3

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnNofs()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_2

    :cond_b
    const-string v2, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "SECONDARY_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v2, "EXTERNAL_STORAGE_USB"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/DevicePolicyManager;

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isMountingExternalStorageDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v29, 0x1

    :cond_d
    :goto_4
    if-nez v29, :cond_e

    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "storage_volume"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/usb/StorageNotification;->getVolumeByPath([Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnUnmountable()I

    move-result v3

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnUnmountable()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v28

    const/16 v27, 0x0

    if-eqz v28, :cond_10

    :try_start_1
    invoke-interface/range {v28 .. v28}, Landroid/os/storage/IMountService;->isExternalSdCardUnencrypted()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v27

    :cond_10
    :goto_5
    if-eqz v27, :cond_d

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.CryptKeeperDialog"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    const v10, 0x104073c

    const v11, 0x104073e

    const v12, 0x108008a

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object v15, v8

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    const/16 v29, 0x1

    goto/16 :goto_4

    :catch_1
    move-exception v24

    const-string v2, "StorageNotification"

    const-string v3, "Error in communicating with mountService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    const-string v2, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_2

    :cond_12
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_13
    const/4 v14, 0x1

    :goto_6
    const-string v2, "SECONDARY_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isMountingExternalStorageDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnNoMedia()I

    move-result v10

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnNoMedia()I

    move-result v11

    const/4 v13, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move v12, v5

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_2

    :cond_15
    const/4 v14, 0x0

    goto :goto_6

    :cond_16
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v22}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_7

    :cond_17
    const-string v2, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "SECONDARY_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isMountingExternalStorageDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnBadRemoval()I

    move-result v16

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnBadRemoval()I

    move-result v17

    const v18, 0x108008a

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v22}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    :goto_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_2

    :cond_19
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v22}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    const-string v2, "StorageNotification"

    const-string v3, "Ignoring unknown state {%s}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->isCurrentUser()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p7, :cond_0

    :try_start_1
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotificationMap:Ljava/util/Map;

    move-object/from16 v0, p7

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-nez p4, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    if-eqz v6, :cond_0

    if-eqz v3, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_3
    if-eqz p4, :cond_6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v3, :cond_4

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    const-wide/16 v10, 0x0

    iput-wide v10, v3, Landroid/app/Notification;->when:J

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotificationMap:Ljava/util/Map;

    move-object/from16 v0, p7

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v9, v3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v3, Landroid/app/Notification;->defaults:I

    if-eqz p5, :cond_7

    const/16 v9, 0x10

    iput v9, v3, Landroid/app/Notification;->flags:I

    :goto_1
    iput-object v8, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-nez p6, :cond_5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v9, v10, v2, v11, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    :cond_5
    move/from16 v0, p3

    iput v0, v3, Landroid/app/Notification;->icon:I

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060059

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, v3, Landroid/app/Notification;->color:I

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v3, v9, v8, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v9, 0x1

    iput v9, v3, Landroid/app/Notification;->visibility:I

    const-string v9, "sys"

    iput-object v9, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    :cond_6
    if-eqz p4, :cond_8

    invoke-virtual {v6, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_7
    const/4 v9, 0x2

    :try_start_2
    iput v9, v3, Landroid/app/Notification;->flags:I

    goto :goto_1

    :cond_8
    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 13

    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    if-eqz v6, :cond_0

    if-eqz p5, :cond_4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v9, :cond_2

    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move/from16 v0, p3

    iput v0, v9, Landroid/app/Notification;->icon:I

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Landroid/app/Notification;->when:J

    :cond_2
    if-eqz p4, :cond_5

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/app/Notification;->defaults:I

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v10, 0x2

    iput v10, v9, Landroid/app/Notification;->flags:I

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v8, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-nez p6, :cond_3

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v9, v10, v3, v11, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1060059

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, v9, Landroid/app/Notification;->color:I

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, v8, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v10, 0x1

    iput v10, v9, Landroid/app/Notification;->visibility:I

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-string v10, "sys"

    iput-object v10, v9, Landroid/app/Notification;->category:Ljava/lang/String;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "adb_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_6

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_4

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v9, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :cond_4
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v5, v9, Landroid/app/Notification;->icon:I

    if-eqz p5, :cond_7

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v5, v10, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_5
    :try_start_2
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Landroid/app/Notification;->defaults:I

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v5, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SystemUI StorageNotification"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->onUsbMassStorageConnectionChanged(Z)V

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/usb/StorageNotification;->checkUsbStorageState(Landroid/os/storage/StorageEventListener;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/usb/StorageNotification;->checkSdcardState(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    return-void
.end method
