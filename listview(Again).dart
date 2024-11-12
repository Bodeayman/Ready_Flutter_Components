body: SingleChildScrollView(
        child: Consumer<Cart>(
          builder: (context, value, child) {
            return Column(
              children: value.selectedElements.map((item) {
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toString()),
                );
              }).toList(),
            );
          },
        ),
      ),
