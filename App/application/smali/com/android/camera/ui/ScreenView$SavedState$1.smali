.class Lcom/android/camera/ui/ScreenView$SavedState$1;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/camera/ui/ScreenView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/camera/ui/ScreenView$SavedState;
    .locals 1

    .line 1738
    new-instance p0, Lcom/android/camera/ui/ScreenView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ScreenView$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/camera/ui/ScreenView$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1736
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/camera/ui/ScreenView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/camera/ui/ScreenView$SavedState;
    .locals 0

    .line 1742
    new-array p0, p1, [Lcom/android/camera/ui/ScreenView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1736
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView$SavedState$1;->newArray(I)[Lcom/android/camera/ui/ScreenView$SavedState;

    move-result-object p0

    return-object p0
.end method
