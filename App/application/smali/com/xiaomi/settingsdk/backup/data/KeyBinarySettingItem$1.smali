.class Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem$1;
.super Ljava/lang/Object;
.source "KeyBinarySettingItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;
    .locals 0

    .line 45
    new-instance p0, Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;

    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->fillFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;
    .locals 0

    .line 40
    new-array p0, p1, [Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem$1;->newArray(I)[Lcom/xiaomi/settingsdk/backup/data/KeyBinarySettingItem;

    move-result-object p0

    return-object p0
.end method
