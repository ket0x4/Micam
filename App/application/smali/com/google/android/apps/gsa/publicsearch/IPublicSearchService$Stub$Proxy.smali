.class public Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "IPublicSearchService.java"

# interfaces
.implements Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/gsa/publicsearch/IPublicSearchService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    const-string v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public beginSession(Ljava/lang/String;Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSessionCallback;[B)Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sessionType",
            "callback",
            "serializedSessionContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/android/aidl/BaseProxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    invoke-static {v0, p2}, Lcom/google/android/aidl/Codecs;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 81
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSession;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
