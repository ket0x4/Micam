.class public abstract Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSessionCallback$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IPublicSearchServiceSessionCallback.java"

# interfaces
.implements Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSessionCallback"

    .line 37
    invoke-direct {p0, v0}, Lcom/google/android/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 56
    sget-object p4, Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;

    .line 57
    invoke-interface {p0, p1, p2}, Lcom/google/android/apps/gsa/publicsearch/IPublicSearchServiceSessionCallback;->onServiceEvent([BLcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;)V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
