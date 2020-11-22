.class public Lcom/android/camera/data/backup/DataBackUpMgr;
.super Ljava/lang/Object;
.source "DataBackUpMgr.java"


# instance fields
.field dataBackUp:Lcom/android/camera/data/backup/DataBackUp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/android/camera/data/backup/DataActionBackUpImpl;

    invoke-direct {v0}, Lcom/android/camera/data/backup/DataActionBackUpImpl;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/backup/DataBackUpMgr;->dataBackUp:Lcom/android/camera/data/backup/DataBackUp;

    return-void
.end method


# virtual methods
.method public backUp()Lcom/android/camera/data/backup/DataBackUp;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/camera/data/backup/DataBackUpMgr;->dataBackUp:Lcom/android/camera/data/backup/DataBackUp;

    return-object p0
.end method
