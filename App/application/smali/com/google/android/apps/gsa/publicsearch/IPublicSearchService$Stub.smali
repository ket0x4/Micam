.class public abstract Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IPublicSearchService.java"

# interfaces
.implements Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;
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
    const-string v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    .line 46
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    instance-of v1, v0, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
