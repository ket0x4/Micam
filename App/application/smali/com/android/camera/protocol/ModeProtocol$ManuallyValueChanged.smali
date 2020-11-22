.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# virtual methods
.method public abstract onDualLensNotifyToTele()V
.end method

.method public abstract onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V
.end method

.method public abstract onDualZoomValueChanged(IZ)V
.end method

.method public abstract onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;)V
.end method

.method public abstract onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;)V
.end method

.method public abstract onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V
.end method
