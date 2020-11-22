.class public abstract Lcom/xiaomi/settingsdk/backup/data/SettingItem;
.super Ljava/lang/Object;
.source "SettingItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaomi/settingsdk/backup/data/SettingItem<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/settingsdk/backup/data/SettingItem;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/settingsdk/backup/data/SettingItem<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 115
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->compareTo(Lcom/xiaomi/settingsdk/backup/data/SettingItem;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected fillFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    iput-object v0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->value:Ljava/lang/Object;

    return-void
.end method

.method protected abstract stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 103
    iget-object p0, p0, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
