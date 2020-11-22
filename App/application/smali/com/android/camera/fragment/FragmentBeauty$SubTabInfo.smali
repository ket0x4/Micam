.class Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubTabInfo"
.end annotation


# instance fields
.field final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final group:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

.field final isNew:Z

.field final statisticKey:Ljava/lang/String;

.field final titleId:I


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;ZLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->group:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    .line 72
    iput p2, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->titleId:I

    .line 73
    iput-object p3, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->clazz:Ljava/lang/Class;

    .line 74
    iput-boolean p4, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->isNew:Z

    .line 75
    iput-object p5, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->statisticKey:Ljava/lang/String;

    return-void
.end method
