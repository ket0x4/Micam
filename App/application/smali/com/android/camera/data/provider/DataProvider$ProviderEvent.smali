.class public interface abstract Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
.super Ljava/lang/Object;
.source "DataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/provider/DataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProviderEvent"
.end annotation


# virtual methods
.method public abstract editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isTransient()Z
.end method

.method public abstract provideKey()Ljava/lang/String;
.end method
