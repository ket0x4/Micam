.class Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem$1;
.super Ljava/lang/Object;
.source "KeyJsonSettingItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;
    .locals 0

    .line 50
    new-instance p0, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;

    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->fillFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;
    .locals 0

    .line 45
    new-array p0, p1, [Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem$1;->newArray(I)[Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;

    move-result-object p0

    return-object p0
.end method
