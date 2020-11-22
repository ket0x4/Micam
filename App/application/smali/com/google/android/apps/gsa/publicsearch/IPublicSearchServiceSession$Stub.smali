.class public abstract Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IPublicSearchServiceSession.java"

# interfaces
.implements Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession"

    .line 54
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    instance-of v1, v0, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
