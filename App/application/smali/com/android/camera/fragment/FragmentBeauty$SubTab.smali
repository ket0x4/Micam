.class Lcom/android/camera/fragment/FragmentBeauty$SubTab;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubTab"
.end annotation


# instance fields
.field final fragment:Landroid/support/v4/app/Fragment;

.field final isNew:Z

.field final statisticKey:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field final titleId:I


# direct methods
.method constructor <init>(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->titleId:I

    .line 93
    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->fragment:Landroid/support/v4/app/Fragment;

    .line 94
    iput-boolean p3, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->isNew:Z

    .line 95
    iput-object p4, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->statisticKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentBeauty$SubTab;)Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/camera/fragment/FragmentBeauty$SubTab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->title:Ljava/lang/String;

    return-object p1
.end method

.method static createByInfo(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;
    .locals 4

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    .line 108
    iget v3, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->titleId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    iget v2, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->titleId:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->isNew:Z

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->statisticKey:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;-><init>(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_0
    const-string p0, "FragmentBeauty"

    const-string v0, "should no happened"

    .line 116
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
