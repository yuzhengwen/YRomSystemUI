.class public interface abstract Lcom/sonymobile/systemui/statusbar/policy/StaminaController;
.super Ljava/lang/Object;
.source "StaminaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V
.end method

.method public abstract isStaminaEnabled()Z
.end method

.method public abstract removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V
.end method

.method public abstract setStaminaEnabled()Z
.end method
