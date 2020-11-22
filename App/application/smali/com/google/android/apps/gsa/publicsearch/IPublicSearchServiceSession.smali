.class public interface abstract Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;
.super Ljava/lang/Object;
.source "IPublicSearchServiceSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGenericClientEvent([B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedClientEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
