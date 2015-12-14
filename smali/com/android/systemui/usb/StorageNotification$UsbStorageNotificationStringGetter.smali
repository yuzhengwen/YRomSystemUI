.class Lcom/android/systemui/usb/StorageNotification$UsbStorageNotificationStringGetter;
.super Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageNotificationStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification$UsbStorageNotificationStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getMessageIdOnBadRemoval()I
    .locals 1

    const v0, 0x1040746

    return v0
.end method

.method getMessageIdOnNoMedia()I
    .locals 1

    const v0, 0x104074a

    return v0
.end method

.method getMessageIdOnNofs()I
    .locals 1

    const v0, 0x1040740

    return v0
.end method

.method getMessageIdOnSafeUnmount()I
    .locals 1

    const v0, 0x1040748

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    const v0, 0x1040744

    return v0
.end method

.method getTitleIdOnBadRemoval()I
    .locals 1

    const v0, 0x1040745

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    const v0, 0x104073d

    return v0
.end method

.method getTitleIdOnNoMedia()I
    .locals 1

    const v0, 0x1040749

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    const v0, 0x104073f

    return v0
.end method

.method getTitleIdOnSafeUnmount()I
    .locals 1

    const v0, 0x1040747

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    const v0, 0x1040743

    return v0
.end method
