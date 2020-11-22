.class public Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;
.super Lcom/xiaomi/settingsdk/backup/data/SettingItem;
.source "KeyStringSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/settingsdk/backup/data/SettingItem<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem$1;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem$1;-><init>()V

    sput-object v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->stringToValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected stringToValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->valueToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected valueToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
