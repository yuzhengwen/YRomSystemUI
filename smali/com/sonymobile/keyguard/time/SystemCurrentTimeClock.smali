.class public Lcom/sonymobile/keyguard/time/SystemCurrentTimeClock;
.super Ljava/lang/Object;
.source "SystemCurrentTimeClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/time/Clock;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeInMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
