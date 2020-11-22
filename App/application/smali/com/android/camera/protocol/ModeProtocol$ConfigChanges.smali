.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# virtual methods
.method public varargs abstract closeMutexElement(Ljava/lang/String;[I)V
.end method

.method public abstract configBokeh(Ljava/lang/String;)V
.end method

.method public abstract configFlash(Ljava/lang/String;)V
.end method

.method public abstract configGroupSwitch(I)V
.end method

.method public abstract configHdr(Ljava/lang/String;)V
.end method

.method public abstract conflictWithBeauty(Z)V
.end method

.method public abstract onConfigChanged(I)V
.end method

.method public abstract onThermalNotification(I)V
.end method

.method public abstract reCheckMutexConfigs()V
.end method

.method public abstract restoreAllMutexElement(Ljava/lang/String;)V
.end method

.method public abstract showSetting()V
.end method

.method public abstract updateComponentBeauty(Z)V
.end method
