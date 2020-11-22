.class public final Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;
.super Ljava/lang/Object;
.source "SystemParcelableWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final parcelable:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper$1;

    invoke-direct {v0}, Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcelable"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;->isSystemParcelable(Landroid/os/Parcelable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iput-object p1, p0, Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;->parcelable:Landroid/os/Parcelable;

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Android system classes can be passed in SystemParcelableWrapper."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static isSystemParcelable(Landroid/os/Parcelable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcelable"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.os."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/google/android/apps/gsa/publicsearch/SystemParcelableWrapper;->parcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
