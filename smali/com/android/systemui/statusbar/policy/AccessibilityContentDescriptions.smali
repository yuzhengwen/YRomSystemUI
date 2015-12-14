.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    :array_0
    .array-data 4
        0x7f0d007d
        0x7f0d007e
        0x7f0d007f
        0x7f0d0080
        0x7f0d0081
    .end array-data

    :array_1
    .array-data 4
        0x7f0d0082
        0x7f0d0083
        0x7f0d0084
        0x7f0d0085
        0x7f0d0086
    .end array-data

    :array_2
    .array-data 4
        0x7f0d0088
        0x7f0d0089
        0x7f0d008a
        0x7f0d008b
        0x7f0d008c
    .end array-data

    :array_3
    .array-data 4
        0x7f0d008f
        0x7f0d0090
        0x7f0d0091
        0x7f0d0092
        0x7f0d0093
    .end array-data
.end method
